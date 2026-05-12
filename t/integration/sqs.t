#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/..";
use integration::helpers qw(skip_unless_integration paws_client unique_name);

skip_unless_integration();

my $paws       = paws_client();
my $sqs        = $paws->service('SQS');
my $queue_name = unique_name('paws-integ-sqs');
my $queue_url;
my $msg_body   = "Paws integration test message: $queue_name";
my $receipt_handle;

my @cleanup;

END {
  if (@cleanup) {
    diag "cleanup: removing test resources";
    for my $step (reverse @cleanup) {
      eval { $step->() };
      warn "cleanup error: $@" if $@;
    }
  }
}

subtest 'CreateQueue' => sub {
  my $result = $sqs->CreateQueue(QueueName => $queue_name);
  $queue_url = $result->QueueUrl;
  ok($queue_url, "created queue url=$queue_url");
  push @cleanup, sub { $sqs->DeleteQueue(QueueUrl => $queue_url) };
};

subtest 'SendMessage' => sub {
  my $result = $sqs->SendMessage(
    QueueUrl    => $queue_url,
    MessageBody => $msg_body,
  );
  ok($result->MessageId, 'SendMessage returned MessageId');
};

subtest 'ReceiveMessage body roundtrip' => sub {
  # SQS may need a brief delay for message visibility
  sleep 2;

  my $result = $sqs->ReceiveMessage(
    QueueUrl            => $queue_url,
    MaxNumberOfMessages => 1,
    WaitTimeSeconds     => 5,
  );

  my $messages = $result->Messages;
  ok($messages && scalar @$messages > 0, 'received at least one message');

  SKIP: {
    skip 'no messages received', 2 unless $messages && @$messages;
    is($messages->[0]->Body, $msg_body, 'message body matches sent body');
    $receipt_handle = $messages->[0]->ReceiptHandle;
    ok($receipt_handle, 'got ReceiptHandle for deletion');
  }
};

subtest 'DeleteMessage' => sub {
  SKIP: {
    skip 'no receipt handle from receive', 1 unless $receipt_handle;
    $sqs->DeleteMessage(
      QueueUrl      => $queue_url,
      ReceiptHandle => $receipt_handle,
    );
    ok(1, 'deleted message');
  }
};

subtest 'DeleteQueue' => sub {
  $sqs->DeleteQueue(QueueUrl => $queue_url);
  ok(1, "deleted queue=$queue_name");
  @cleanup = ();
};

done_testing();
