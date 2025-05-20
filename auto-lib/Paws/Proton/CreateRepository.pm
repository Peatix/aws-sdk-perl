
package Paws::Proton::CreateRepository;
  use Moose;
  has ConnectionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionArn' , required => 1);
  has EncryptionKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKey' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Provider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provider' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Proton::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRepository');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::CreateRepositoryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateRepository - Arguments for method CreateRepository on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRepository on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method CreateRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRepository.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $CreateRepositoryOutput = $proton->CreateRepository(
      ConnectionArn => 'MyArn',
      Name          => 'MyRepositoryName',
      Provider      => 'GITHUB',
      EncryptionKey => 'MyArn',              # OPTIONAL
      Tags          => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Repository = $CreateRepositoryOutput->Repository;

    # Returns a L<Paws::Proton::CreateRepositoryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/CreateRepository>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionArn => Str

The Amazon Resource Name (ARN) of your AWS CodeStar connection that
connects Proton to your repository provider account. For more
information, see Setting up for Proton
(https://docs.aws.amazon.com/proton/latest/userguide/setting-up-for-service.html)
in the I<Proton User Guide>.



=head2 EncryptionKey => Str

The ARN of your customer Amazon Web Services Key Management Service
(Amazon Web Services KMS) key.



=head2 B<REQUIRED> Name => Str

The repository name (for example, C<myrepos/myrepo>).



=head2 B<REQUIRED> Provider => Str

The repository provider.

Valid values are: C<"GITHUB">, C<"GITHUB_ENTERPRISE">, C<"BITBUCKET">

=head2 Tags => ArrayRef[L<Paws::Proton::Tag>]

An optional list of metadata items that you can associate with the
Proton repository. A tag is a key-value pair.

For more information, see Proton resources and tagging
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html) in
the I<Proton User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRepository in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

