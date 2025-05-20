
package Paws::CodeArtifact::DeleteRepository;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRepository');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/repository');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::DeleteRepositoryResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DeleteRepository - Arguments for method DeleteRepository on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRepository on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method DeleteRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRepository.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $DeleteRepositoryResult = $codeartifact->DeleteRepository(
      Domain      => 'MyDomainName',
      Repository  => 'MyRepositoryName',
      DomainOwner => 'MyAccountId',        # OPTIONAL
    );

    # Results:
    my $Repository = $DeleteRepositoryResult->Repository;

    # Returns a L<Paws::CodeArtifact::DeleteRepositoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/DeleteRepository>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the repository to delete.



=head2 DomainOwner => Str

The 12-digit account number of the Amazon Web Services account that
owns the domain. It does not include dashes or spaces.



=head2 B<REQUIRED> Repository => Str

The name of the repository to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRepository in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

