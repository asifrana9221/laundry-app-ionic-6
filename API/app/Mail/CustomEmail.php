<?php

    namespace App\Mail;

    use Illuminate\Bus\Queueable;
    use Illuminate\Contracts\Queue\ShouldQueue;
    use Illuminate\Mail\Mailable;
    use Illuminate\Queue\SerializesModels;
    
    class CustomEmail extends Mailable
    {
        use Queueable, SerializesModels;
    
         protected $subject;
        protected $body;
    
        public function __construct($subject, $body)
        {
            $this->subject = $subject;
            $this->body = $body;
        }
    
        public function build()
        {
            return $this->subject($this->subject)
                        ->html($this->body);
        }
    }

?>