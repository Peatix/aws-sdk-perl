
package Paws::Glue::StopSession;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has RequestOrigin => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::StopSessionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StopSession - Arguments for method StopSession on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopSession on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method StopSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopSession.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $StopSessionResponse = $glue->StopSession(
      Id            => 'MyNameString',
      RequestOrigin => 'MyOrchestrationNameString',    # OPTIONAL
    );

    # Results:
    my $Id = $StopSessionResponse->Id;

    # Returns a L<Paws::Glue::StopSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/StopSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the session to be stopped.



=head2 RequestOrigin => Str

The origin of the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopSession in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

