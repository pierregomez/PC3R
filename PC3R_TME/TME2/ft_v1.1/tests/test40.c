#include "fthread.h"
#include "stdio.h"

/* await_n : received, then timeout */

ft_event_t  evt;

void one (void)
{
   int res = ft_thread_await_n (evt,10);
   if (res == OK) fprintf (stdout, "event received! ");
   if (res == ETIMEOUT) fprintf (stdout, "timeout! ");
}

void awaiter (void *args)
{
   one ();
   ft_thread_cooperate ();
   one ();      
   fprintf (stdout, "exit!\n");   
   exit (0);
}

void trace_instant (void *args)
{
   int i = 1;
   while (1) {
      fprintf (stdout, "\ninstant %d: ",i);
      i++;
      ft_thread_cooperate ();
   }
}

void generator (void *args)
{
   ft_thread_cooperate_n (3);  
   fprintf (stdout, "event generated! ");
   ft_thread_generate (evt);
}

int main (void)
{
   ft_scheduler_t sched = ft_scheduler_create ();

   evt = ft_event_create (sched);
   ft_thread_create (sched,trace_instant,NULL,NULL);

   ft_thread_create (sched,awaiter,NULL,NULL);
   ft_thread_create (sched,generator,NULL,NULL);     

   ft_scheduler_start (sched);

   ft_exit ();
   return 0;
}

/* result
 
instant 1:
instant 2:
instant 3:
instant 4: event generated! event received!
instant 5:
instant 6:
instant 7:
instant 8:
instant 9:
instant 10:
instant 11:
instant 12:
instant 13:
instant 14:
instant 15: timeout! exit!
end result */
