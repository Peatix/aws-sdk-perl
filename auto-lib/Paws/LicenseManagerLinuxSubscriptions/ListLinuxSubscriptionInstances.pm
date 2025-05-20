
package Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionInstances;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManagerLinuxSubscriptions::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLinuxSubscriptionInstances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/subscription/ListLinuxSubscriptionInstances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionInstancesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionInstances - Arguments for method ListLinuxSubscriptionInstances on L<Paws::LicenseManagerLinuxSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLinuxSubscriptionInstances on the
L<AWS License Manager Linux Subscriptions|Paws::LicenseManagerLinuxSubscriptions> service. Use the attributes of this class
as arguments to method ListLinuxSubscriptionInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLinuxSubscriptionInstances.

=head1 SYNOPSIS

    my $license-manager-linux-subscriptions = Paws->service('LicenseManagerLinuxSubscriptions');
    my $ListLinuxSubscriptionInstancesResponse =
      $license -manager-linux-subscriptions->ListLinuxSubscriptionInstances(
      Filters => [
        {
          Name     => 'MyString',    # OPTIONAL
          Operator => 'Equal'
          ,    # values: Equal, NotEqual, Containsmin: 1, max: 20; OPTIONAL
          Values => [
            'MyStringListMemberString', ...    # min: 1, max: 100
          ],    # min: 1, max: 100; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                                               # OPTIONAL
      NextToken  =>
        'MyListLinuxSubscriptionInstancesRequestNextTokenString',    # OPTIONAL
      );

    # Results:
    my $Instances = $ListLinuxSubscriptionInstancesResponse->Instances;
    my $NextToken = $ListLinuxSubscriptionInstancesResponse->NextToken;

# Returns a L<Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions/ListLinuxSubscriptionInstances>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::LicenseManagerLinuxSubscriptions::Filter>]

An array of structures that you can use to filter the results by your
specified criteria. For example, you can specify C<Region> in the
C<Name>, with the C<contains> operator to list all subscriptions that
match a partial string in the C<Value>, such as C<us-west>.

For each filter, you can specify one of the following values for the
C<Name> key to streamline results:

=over

=item *

C<AccountID>

=item *

C<AmiID>

=item *

C<DualSubscription>

=item *

C<InstanceID>

=item *

C<InstanceType>

=item *

C<ProductCode>

=item *

C<Region>

=item *

C<Status>

=item *

C<UsageOperation>

=back

For each filter, you can use one of the following C<Operator> values to
define the behavior of the filter:

=over

=item *

C<contains>

=item *

C<equals>

=item *

C<Notequal>

=back




=head2 MaxResults => Int

The maximum items to return in a request.



=head2 NextToken => Str

A token to specify where to start paginating. This is the nextToken
from a previously truncated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLinuxSubscriptionInstances in L<Paws::LicenseManagerLinuxSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

