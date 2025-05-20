
package Paws::TimestreamInfluxDB::CreateDbParameterGroupOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::TimestreamInfluxDB::Parameters', traits => ['NameInRequest'], request_name => 'parameters' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::CreateDbParameterGroupOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARM) of the DB parameter group.


=head2 Description => Str

The description of the DB parameter group.


=head2 B<REQUIRED> Id => Str

A service-generated unique identifier.


=head2 B<REQUIRED> Name => Str

The customer-supplied name that uniquely identifies the DB parameter
group when interacting with the Amazon Timestream for InfluxDB API and
CLI commands.


=head2 Parameters => L<Paws::TimestreamInfluxDB::Parameters>

A list of the parameters that comprise the DB parameter group.


=head2 _request_id => Str


=cut

1;