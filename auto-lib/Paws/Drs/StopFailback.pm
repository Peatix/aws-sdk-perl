
package Paws::Drs::StopFailback;
  use Moose;
  has RecoveryInstanceID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recoveryInstanceID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopFailback');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StopFailback');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::StopFailback - Arguments for method StopFailback on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopFailback on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method StopFailback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopFailback.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    $drs->StopFailback(
      RecoveryInstanceID => 'MyRecoveryInstanceID',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/StopFailback>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecoveryInstanceID => Str

The ID of the Recovery Instance we want to stop failback for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopFailback in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

