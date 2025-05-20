
package Paws::Drs::ReverseReplication;
  use Moose;
  has RecoveryInstanceID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recoveryInstanceID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReverseReplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ReverseReplication');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::ReverseReplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::ReverseReplication - Arguments for method ReverseReplication on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReverseReplication on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method ReverseReplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReverseReplication.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $ReverseReplicationResponse = $drs->ReverseReplication(
      RecoveryInstanceID => 'MyRecoveryInstanceID',

    );

    # Results:
    my $ReversedDirectionSourceServerArn =
      $ReverseReplicationResponse->ReversedDirectionSourceServerArn;

    # Returns a L<Paws::Drs::ReverseReplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/ReverseReplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecoveryInstanceID => Str

The ID of the Recovery Instance that we want to reverse the replication
for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReverseReplication in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

