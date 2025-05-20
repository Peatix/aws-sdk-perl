
package Paws::Athena::CreatePresignedNotebookUrl;
  use Moose;
  has SessionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePresignedNotebookUrl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::CreatePresignedNotebookUrlResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::CreatePresignedNotebookUrl - Arguments for method CreatePresignedNotebookUrl on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePresignedNotebookUrl on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method CreatePresignedNotebookUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePresignedNotebookUrl.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $CreatePresignedNotebookUrlResponse =
      $athena->CreatePresignedNotebookUrl(
      SessionId => 'MySessionId',

      );

    # Results:
    my $AuthToken = $CreatePresignedNotebookUrlResponse->AuthToken;
    my $AuthTokenExpirationTime =
      $CreatePresignedNotebookUrlResponse->AuthTokenExpirationTime;
    my $NotebookUrl = $CreatePresignedNotebookUrlResponse->NotebookUrl;

    # Returns a L<Paws::Athena::CreatePresignedNotebookUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/CreatePresignedNotebookUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SessionId => Str

The session ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePresignedNotebookUrl in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

