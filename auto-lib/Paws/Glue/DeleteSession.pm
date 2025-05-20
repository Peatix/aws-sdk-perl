
package Paws::Glue::DeleteSession;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has RequestOrigin => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DeleteSessionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteSession - Arguments for method DeleteSession on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSession on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DeleteSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSession.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DeleteSessionResponse = $glue->DeleteSession(
      Id            => 'MyNameString',
      RequestOrigin => 'MyOrchestrationNameString',    # OPTIONAL
    );

    # Results:
    my $Id = $DeleteSessionResponse->Id;

    # Returns a L<Paws::Glue::DeleteSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DeleteSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the session to be deleted.



=head2 RequestOrigin => Str

The name of the origin of the delete session request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSession in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

