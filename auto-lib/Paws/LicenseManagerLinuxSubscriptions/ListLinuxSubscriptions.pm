
package Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptions;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManagerLinuxSubscriptions::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLinuxSubscriptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/subscription/ListLinuxSubscriptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptions - Arguments for method ListLinuxSubscriptions on L<Paws::LicenseManagerLinuxSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLinuxSubscriptions on the
L<AWS License Manager Linux Subscriptions|Paws::LicenseManagerLinuxSubscriptions> service. Use the attributes of this class
as arguments to method ListLinuxSubscriptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLinuxSubscriptions.

=head1 SYNOPSIS

    my $license-manager-linux-subscriptions = Paws->service('LicenseManagerLinuxSubscriptions');
    my $ListLinuxSubscriptionsResponse =
      $license -manager-linux-subscriptions->ListLinuxSubscriptions(
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
      MaxResults => 1,                                                # OPTIONAL
      NextToken  => 'MyListLinuxSubscriptionsRequestNextTokenString', # OPTIONAL
      );

    # Results:
    my $NextToken     = $ListLinuxSubscriptionsResponse->NextToken;
    my $Subscriptions = $ListLinuxSubscriptionsResponse->Subscriptions;

# Returns a L<Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions/ListLinuxSubscriptions>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::LicenseManagerLinuxSubscriptions::Filter>]

An array of structures that you can use to filter the results to those
that match one or more sets of key-value pairs that you specify. For
example, you can filter by the name of C<Subscription> with an optional
operator to see subscriptions that match, partially match, or don't
match a certain subscription's name.

The valid names for this filter are:

=over

=item *

C<Subscription>

=back

The valid Operators for this filter are:

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

This class forms part of L<Paws>, documenting arguments for method ListLinuxSubscriptions in L<Paws::LicenseManagerLinuxSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

