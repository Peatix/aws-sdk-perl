
package Paws::CodeConnections::UpdateRepositoryLink;
  use Moose;
  has ConnectionArn => (is => 'ro', isa => 'Str');
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has RepositoryLinkId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRepositoryLink');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeConnections::UpdateRepositoryLinkOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::UpdateRepositoryLink - Arguments for method UpdateRepositoryLink on L<Paws::CodeConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRepositoryLink on the
L<AWS CodeConnections|Paws::CodeConnections> service. Use the attributes of this class
as arguments to method UpdateRepositoryLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRepositoryLink.

=head1 SYNOPSIS

    my $codeconnections = Paws->service('CodeConnections');
    my $UpdateRepositoryLinkOutput = $codeconnections->UpdateRepositoryLink(
      RepositoryLinkId => 'MyRepositoryLinkId',
      ConnectionArn    => 'MyConnectionArn',      # OPTIONAL
      EncryptionKeyArn => 'MyKmsKeyArn',          # OPTIONAL
    );

    # Results:
    my $RepositoryLinkInfo = $UpdateRepositoryLinkOutput->RepositoryLinkInfo;

    # Returns a L<Paws::CodeConnections::UpdateRepositoryLinkOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeconnections/UpdateRepositoryLink>

=head1 ATTRIBUTES


=head2 ConnectionArn => Str

The Amazon Resource Name (ARN) of the connection for the repository
link to be updated. The updated connection ARN must have the same
providerType (such as GitHub) as the original connection ARN for the
repo link.



=head2 EncryptionKeyArn => Str

The Amazon Resource Name (ARN) of the encryption key for the repository
link to be updated.



=head2 B<REQUIRED> RepositoryLinkId => Str

The ID of the repository link to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRepositoryLink in L<Paws::CodeConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

