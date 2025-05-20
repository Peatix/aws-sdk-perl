
package Paws::CodeArtifact::DescribePackageGroup;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has PackageGroup => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package-group', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePackageGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/package-group');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::DescribePackageGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DescribePackageGroup - Arguments for method DescribePackageGroup on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePackageGroup on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method DescribePackageGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePackageGroup.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $DescribePackageGroupResult = $codeartifact->DescribePackageGroup(
      Domain       => 'MyDomainName',
      PackageGroup => 'MyPackageGroupPattern',
      DomainOwner  => 'MyAccountId',             # OPTIONAL
    );

    # Results:
    my $PackageGroup = $DescribePackageGroupResult->PackageGroup;

    # Returns a L<Paws::CodeArtifact::DescribePackageGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/DescribePackageGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the package group.



=head2 DomainOwner => Str

The 12-digit account number of the Amazon Web Services account that
owns the domain. It does not include dashes or spaces.



=head2 B<REQUIRED> PackageGroup => Str

The pattern of the requested package group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePackageGroup in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

