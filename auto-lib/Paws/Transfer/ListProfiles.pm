
package Paws::Transfer::ListProfiles;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProfileType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProfiles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::ListProfilesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListProfiles - Arguments for method ListProfiles on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProfiles on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method ListProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProfiles.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $ListProfilesResponse = $transfer->ListProfiles(
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
      ProfileType => 'LOCAL',          # OPTIONAL
    );

    # Results:
    my $NextToken = $ListProfilesResponse->NextToken;
    my $Profiles  = $ListProfilesResponse->Profiles;

    # Returns a L<Paws::Transfer::ListProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/ListProfiles>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return.



=head2 NextToken => Str

When there are additional results that were not returned, a
C<NextToken> parameter is returned. You can use that value for a
subsequent call to C<ListProfiles> to continue listing results.



=head2 ProfileType => Str

Indicates whether to list only C<LOCAL> type profiles or only
C<PARTNER> type profiles. If not supplied in the request, the command
lists all types of profiles.

Valid values are: C<"LOCAL">, C<"PARTNER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProfiles in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

