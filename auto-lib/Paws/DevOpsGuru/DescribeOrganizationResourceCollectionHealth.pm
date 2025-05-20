
package Paws::DevOpsGuru::DescribeOrganizationResourceCollectionHealth;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationalUnitIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OrganizationResourceCollectionType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrganizationResourceCollectionHealth');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/organization/health/resource-collection');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::DescribeOrganizationResourceCollectionHealthResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeOrganizationResourceCollectionHealth - Arguments for method DescribeOrganizationResourceCollectionHealth on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOrganizationResourceCollectionHealth on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method DescribeOrganizationResourceCollectionHealth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOrganizationResourceCollectionHealth.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $DescribeOrganizationResourceCollectionHealthResponse =
      $devops -guru->DescribeOrganizationResourceCollectionHealth(
      OrganizationResourceCollectionType => 'AWS_CLOUD_FORMATION',
      AccountIds                         => [
        'MyAwsAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      MaxResults            => 1,                    # OPTIONAL
      NextToken             => 'MyUuidNextToken',    # OPTIONAL
      OrganizationalUnitIds => [
        'MyOrganizationalUnitId', ...                # max: 68
      ],    # OPTIONAL
      );

    # Results:
    my $Account =
      $DescribeOrganizationResourceCollectionHealthResponse->Account;
    my $CloudFormation =
      $DescribeOrganizationResourceCollectionHealthResponse->CloudFormation;
    my $NextToken =
      $DescribeOrganizationResourceCollectionHealthResponse->NextToken;
    my $Service =
      $DescribeOrganizationResourceCollectionHealthResponse->Service;
    my $Tags = $DescribeOrganizationResourceCollectionHealthResponse->Tags;

# Returns a L<Paws::DevOpsGuru::DescribeOrganizationResourceCollectionHealthResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/DescribeOrganizationResourceCollectionHealth>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The ID of the Amazon Web Services account.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.



=head2 OrganizationalUnitIds => ArrayRef[Str|Undef]

The ID of the organizational unit.



=head2 B<REQUIRED> OrganizationResourceCollectionType => Str

An Amazon Web Services resource collection type. This type specifies
how analyzed Amazon Web Services resources are defined. The two types
of Amazon Web Services resource collections supported are Amazon Web
Services CloudFormation stacks and Amazon Web Services resources that
contain the same Amazon Web Services tag. DevOps Guru can be configured
to analyze the Amazon Web Services resources that are defined in the
stacks or that are tagged using the same tag I<key>. You can specify up
to 500 Amazon Web Services CloudFormation stacks.

Valid values are: C<"AWS_CLOUD_FORMATION">, C<"AWS_SERVICE">, C<"AWS_ACCOUNT">, C<"AWS_TAGS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOrganizationResourceCollectionHealth in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

