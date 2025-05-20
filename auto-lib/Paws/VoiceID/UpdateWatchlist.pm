
package Paws::VoiceID::UpdateWatchlist;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has WatchlistId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWatchlist');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VoiceID::UpdateWatchlistResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::UpdateWatchlist - Arguments for method UpdateWatchlist on L<Paws::VoiceID>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWatchlist on the
L<Amazon Voice ID|Paws::VoiceID> service. Use the attributes of this class
as arguments to method UpdateWatchlist.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWatchlist.

=head1 SYNOPSIS

    my $voiceid = Paws->service('VoiceID');
    my $UpdateWatchlistResponse = $voiceid->UpdateWatchlist(
      DomainId    => 'MyDomainId',
      WatchlistId => 'MyWatchlistId',
      Description => 'MyWatchlistDescription',    # OPTIONAL
      Name        => 'MyWatchlistName',           # OPTIONAL
    );

    # Results:
    my $Watchlist = $UpdateWatchlistResponse->Watchlist;

    # Returns a L<Paws::VoiceID::UpdateWatchlistResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voiceid/UpdateWatchlist>

=head1 ATTRIBUTES


=head2 Description => Str

A brief description about this watchlist.



=head2 B<REQUIRED> DomainId => Str

The identifier of the domain that contains the watchlist.



=head2 Name => Str

The name of the watchlist.



=head2 B<REQUIRED> WatchlistId => Str

The identifier of the watchlist to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWatchlist in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

