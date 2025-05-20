
package Paws::WAFV2::UpdateManagedRuleSetVersionExpiryDateResponse;
  use Moose;
  has ExpiringVersion => (is => 'ro', isa => 'Str');
  has ExpiryTimestamp => (is => 'ro', isa => 'Str');
  has NextLockToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::UpdateManagedRuleSetVersionExpiryDateResponse

=head1 ATTRIBUTES


=head2 ExpiringVersion => Str

The version that is set to expire.


=head2 ExpiryTimestamp => Str

The time that the version will expire.

Times are in Coordinated Universal Time (UTC) format. UTC format
includes the special designator, Z. For example, "2016-09-27T14:50Z".


=head2 NextLockToken => Str

A token used for optimistic locking. WAF returns a token to your C<get>
and C<list> requests, to mark the state of the entity at the time of
the request. To make changes to the entity associated with the token,
you provide the token to operations like C<update> and C<delete>. WAF
uses the token to ensure that no changes have been made to the entity
since you last retrieved it. If a change has been made, the update
fails with a C<WAFOptimisticLockException>. If this happens, perform
another C<get>, and use the new token returned by that operation.


=head2 _request_id => Str


=cut

1;