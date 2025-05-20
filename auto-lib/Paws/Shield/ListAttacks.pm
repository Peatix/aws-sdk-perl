
package Paws::Shield::ListAttacks;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Paws::Shield::TimeRange');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StartTime => (is => 'ro', isa => 'Paws::Shield::TimeRange');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAttacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::ListAttacksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::ListAttacks - Arguments for method ListAttacks on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAttacks on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method ListAttacks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAttacks.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $ListAttacksResponse = $shield->ListAttacks(
      EndTime => {
        FromInclusive => '1970-01-01T01:00:00',    # OPTIONAL
        ToExclusive   => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      MaxResults   => 1,            # OPTIONAL
      NextToken    => 'MyToken',    # OPTIONAL
      ResourceArns => [
        'MyResourceArn', ...        # min: 1, max: 2048
      ],    # OPTIONAL
      StartTime => {
        FromInclusive => '1970-01-01T01:00:00',    # OPTIONAL
        ToExclusive   => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AttackSummaries = $ListAttacksResponse->AttackSummaries;
    my $NextToken       = $ListAttacksResponse->NextToken;

    # Returns a L<Paws::Shield::ListAttacksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/ListAttacks>

=head1 ATTRIBUTES


=head2 EndTime => L<Paws::Shield::TimeRange>

The end of the time period for the attacks. This is a C<timestamp>
type. The request syntax listing for this call indicates a C<number>
type, but you can provide the time in any valid timestamp format
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp)
setting.



=head2 MaxResults => Int

The greatest number of objects that you want Shield Advanced to return
to the list request. Shield Advanced might return fewer objects than
you indicate in this setting, even if more objects are available. If
there are more objects remaining, Shield Advanced will always also
return a C<NextToken> value in the response.

The default setting is 20.



=head2 NextToken => Str

When you request a list of objects from Shield Advanced, if the
response does not include all of the remaining available objects,
Shield Advanced includes a C<NextToken> value in the response. You can
retrieve the next batch of objects by requesting the list again and
providing the token that was returned by the prior call in your
request.

You can indicate the maximum number of objects that you want Shield
Advanced to return for a single call with the C<MaxResults> setting.
Shield Advanced will not return more than C<MaxResults> objects, but
may return fewer, even if more objects are still available.

Whenever more objects remain that Shield Advanced has not yet returned
to you, the response will include a C<NextToken> value.

On your first call to a list operation, leave this setting empty.



=head2 ResourceArns => ArrayRef[Str|Undef]

The ARNs (Amazon Resource Names) of the resources that were attacked.
If you leave this blank, all applicable resources for this account will
be included.



=head2 StartTime => L<Paws::Shield::TimeRange>

The start of the time period for the attacks. This is a C<timestamp>
type. The request syntax listing for this call indicates a C<number>
type, but you can provide the time in any valid timestamp format
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp)
setting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAttacks in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

