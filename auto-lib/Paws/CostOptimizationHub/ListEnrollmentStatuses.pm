
package Paws::CostOptimizationHub::ListEnrollmentStatuses;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountId' );
  has IncludeOrganizationInfo => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeOrganizationInfo' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnrollmentStatuses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostOptimizationHub::ListEnrollmentStatusesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub::ListEnrollmentStatuses - Arguments for method ListEnrollmentStatuses on L<Paws::CostOptimizationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnrollmentStatuses on the
L<Cost Optimization Hub|Paws::CostOptimizationHub> service. Use the attributes of this class
as arguments to method ListEnrollmentStatuses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnrollmentStatuses.

=head1 SYNOPSIS

    my $cost-optimization-hub = Paws->service('CostOptimizationHub');
    my $ListEnrollmentStatusesResponse =
      $cost -optimization-hub->ListEnrollmentStatuses(
      AccountId               => 'MyAccountId',    # OPTIONAL
      IncludeOrganizationInfo => 1,                # OPTIONAL
      MaxResults              => 1,                # OPTIONAL
      NextToken               => 'MyString',       # OPTIONAL
      );

    # Results:
    my $IncludeMemberAccounts =
      $ListEnrollmentStatusesResponse->IncludeMemberAccounts;
    my $Items     = $ListEnrollmentStatusesResponse->Items;
    my $NextToken = $ListEnrollmentStatusesResponse->NextToken;

# Returns a L<Paws::CostOptimizationHub::ListEnrollmentStatusesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub/ListEnrollmentStatuses>

=head1 ATTRIBUTES


=head2 AccountId => Str

The account ID of a member account in the organization.



=head2 IncludeOrganizationInfo => Bool

Indicates whether to return the enrollment status for the organization.



=head2 MaxResults => Int

The maximum number of objects that are returned for the request.



=head2 NextToken => Str

The token to retrieve the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnrollmentStatuses in L<Paws::CostOptimizationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

