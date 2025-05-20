
package Paws::CodeArtifact::ListPackageGroups;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has Prefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'prefix');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPackageGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/package-groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::ListPackageGroupsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListPackageGroups - Arguments for method ListPackageGroups on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPackageGroups on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method ListPackageGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPackageGroups.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $ListPackageGroupsResult = $codeartifact->ListPackageGroups(
      Domain      => 'MyDomainName',
      DomainOwner => 'MyAccountId',                    # OPTIONAL
      MaxResults  => 1,                                # OPTIONAL
      NextToken   => 'MyPaginationToken',              # OPTIONAL
      Prefix      => 'MyPackageGroupPatternPrefix',    # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListPackageGroupsResult->NextToken;
    my $PackageGroups = $ListPackageGroupsResult->PackageGroups;

    # Returns a L<Paws::CodeArtifact::ListPackageGroupsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/ListPackageGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The domain for which you want to list package groups.



=head2 DomainOwner => Str

The 12-digit account number of the Amazon Web Services account that
owns the domain. It does not include dashes or spaces.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 Prefix => Str

A prefix for which to search package groups. When included,
C<ListPackageGroups> will return only package groups with patterns that
match the prefix.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPackageGroups in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

