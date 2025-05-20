
package Paws::Glue::GetStatement;
  use Moose;
  has Id => (is => 'ro', isa => 'Int', required => 1);
  has RequestOrigin => (is => 'ro', isa => 'Str');
  has SessionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStatement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetStatementResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetStatement - Arguments for method GetStatement on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStatement on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStatement.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetStatementResponse = $glue->GetStatement(
      Id            => 1,
      SessionId     => 'MyNameString',
      RequestOrigin => 'MyOrchestrationNameString',    # OPTIONAL
    );

    # Results:
    my $Statement = $GetStatementResponse->Statement;

    # Returns a L<Paws::Glue::GetStatementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetStatement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Int

The Id of the statement.



=head2 RequestOrigin => Str

The origin of the request.



=head2 B<REQUIRED> SessionId => Str

The Session ID of the statement.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStatement in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

