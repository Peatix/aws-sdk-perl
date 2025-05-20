
package Paws::CodeConnections::CreateRepositoryLink;
  use Moose;
  has ConnectionArn => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has OwnerId => (is => 'ro', isa => 'Str', required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeConnections::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRepositoryLink');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeConnections::CreateRepositoryLinkOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::CreateRepositoryLink - Arguments for method CreateRepositoryLink on L<Paws::CodeConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRepositoryLink on the
L<AWS CodeConnections|Paws::CodeConnections> service. Use the attributes of this class
as arguments to method CreateRepositoryLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRepositoryLink.

=head1 SYNOPSIS

    my $codeconnections = Paws->service('CodeConnections');
    my $CreateRepositoryLinkOutput = $codeconnections->CreateRepositoryLink(
      ConnectionArn    => 'MyConnectionArn',
      OwnerId          => 'MyOwnerId',
      RepositoryName   => 'MyRepositoryName',
      EncryptionKeyArn => 'MyKmsKeyArn',        # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $RepositoryLinkInfo = $CreateRepositoryLinkOutput->RepositoryLinkInfo;

    # Returns a L<Paws::CodeConnections::CreateRepositoryLinkOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeconnections/CreateRepositoryLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionArn => Str

The Amazon Resource Name (ARN) of the connection to be associated with
the repository link.



=head2 EncryptionKeyArn => Str

The Amazon Resource Name (ARN) encryption key for the repository to be
associated with the repository link.



=head2 B<REQUIRED> OwnerId => Str

The owner ID for the repository associated with a specific sync
configuration, such as the owner ID in GitHub.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository to be associated with the repository link.



=head2 Tags => ArrayRef[L<Paws::CodeConnections::Tag>]

The tags for the repository to be associated with the repository link.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRepositoryLink in L<Paws::CodeConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

