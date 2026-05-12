#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/..";
use integration::helpers qw(skip_unless_integration paws_client unique_name);

skip_unless_integration();

my $paws       = paws_client();
my $ddb        = $paws->service('DynamoDB');
my $table_name = unique_name('paws-integ-ddb');

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

subtest 'CreateTable' => sub {
  my $result = $ddb->CreateTable(
    TableName            => $table_name,
    AttributeDefinitions => [
      { AttributeName => 'pk', AttributeType => 'S' },
    ],
    KeySchema => [
      { AttributeName => 'pk', KeyType => 'HASH' },
    ],
    BillingMode => 'PAY_PER_REQUEST',
  );

  is($result->TableDescription->TableName, $table_name, "created table=$table_name");
  push @cleanup, sub { $ddb->DeleteTable(TableName => $table_name) };

  # Wait for table to become ACTIVE
  my $status = '';
  for my $attempt (1..30) {
    my $desc = $ddb->DescribeTable(TableName => $table_name);
    $status = $desc->Table->TableStatus;
    last if $status eq 'ACTIVE';
    diag "table status=$status, waiting... (attempt $attempt)";
    sleep 2;
  }
  is($status, 'ACTIVE', 'table reached ACTIVE status');
};

subtest 'PutItem' => sub {
  $ddb->PutItem(
    TableName => $table_name,
    Item      => {
      pk    => { S => 'test-key-1' },
      value => { S => 'hello-paws' },
      count => { N => '42' },
    },
  );
  ok(1, 'PutItem succeeded');
};

subtest 'GetItem attribute roundtrip' => sub {
  my $result = $ddb->GetItem(
    TableName => $table_name,
    Key       => {
      pk => { S => 'test-key-1' },
    },
    ConsistentRead => 1,
  );

  my $item = $result->Item;
  ok($item, 'GetItem returned an item');

  SKIP: {
    skip 'no item returned', 2 unless $item;
    is($item->{value}{S}, 'hello-paws', 'string attribute roundtrips');
    is($item->{count}{N}, '42', 'number attribute roundtrips');
  }
};

subtest 'DeleteItem' => sub {
  $ddb->DeleteItem(
    TableName => $table_name,
    Key       => {
      pk => { S => 'test-key-1' },
    },
  );
  ok(1, 'DeleteItem succeeded');
};

subtest 'DeleteTable' => sub {
  $ddb->DeleteTable(TableName => $table_name);
  ok(1, "deleted table=$table_name");
  @cleanup = ();
};

done_testing();
