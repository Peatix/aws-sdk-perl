
package Paws::VoiceID::CreateWatchlist;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWatchlist');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VoiceID::CreateWatchlistResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::CreateWatchlist - Arguments for method CreateWatchlist on L<Paws::VoiceID>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWatchlist on the
L<Amazon Voice ID|Paws::VoiceID> service. Use the attributes of this class
as arguments to method CreateWatchlist.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWatchlist.

=head1 SYNOPSIS

    my $voiceid = Paws->service('VoiceID');
    my $CreateWatchlistResponse = $voiceid->CreateWatchlist(
      DomainId    => 'MyDomainId',
      Name        => 'MyWatchlistName',
      ClientToken => 'MyClientTokenString',       # OPTIONAL
      Description => 'MyWatchlistDescription',    # OPTIONAL
    );

    # Results:
    my $Watchlist = $CreateWatchlistResponse->Watchlist;

    # Returns a L<Paws::VoiceID::CreateWatchlistResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voiceid/CreateWatchlist>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 Description => Str

A brief description of this watchlist.



=head2 B<REQUIRED> DomainId => Str

The identifier of the domain that contains the watchlist.



=head2 B<REQUIRED> Name => Str

The name of the watchlist.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWatchlist in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

