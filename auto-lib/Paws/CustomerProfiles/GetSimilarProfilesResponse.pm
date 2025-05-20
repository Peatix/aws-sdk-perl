
package Paws::CustomerProfiles::GetSimilarProfilesResponse;
  use Moose;
  has ConfidenceScore => (is => 'ro', isa => 'Num');
  has MatchId => (is => 'ro', isa => 'Str');
  has MatchType => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProfileIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RuleLevel => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetSimilarProfilesResponse

=head1 ATTRIBUTES


=head2 ConfidenceScore => Num

It only has value when the C<MatchType> is C<ML_BASED_MATCHING>.A
number between 0 and 1, where a higher score means higher similarity.
Examining match confidence scores lets you distinguish between groups
of similar records in which the system is highly confident (which you
may decide to merge), groups of similar records about which the system
is uncertain (which you may decide to have reviewed by a human), and
groups of similar records that the system deems to be unlikely (which
you may decide to reject). Given confidence scores vary as per the data
input, it should not be used as an absolute measure of matching
quality.


=head2 MatchId => Str

The string C<matchId> that the similar profiles belong to.


=head2 MatchType => Str

Specify the type of matching to get similar profiles for.

Valid values are: C<"RULE_BASED_MATCHING">, C<"ML_BASED_MATCHING">
=head2 NextToken => Str

The pagination token from the previous C<GetSimilarProfiles> API call.


=head2 ProfileIds => ArrayRef[Str|Undef]

Set of C<profileId>s that belong to the same matching group.


=head2 RuleLevel => Int

The integer rule level that the profiles matched on.


=head2 _request_id => Str


=cut

