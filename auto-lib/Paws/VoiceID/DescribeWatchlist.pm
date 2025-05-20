
package Paws::VoiceID::DescribeWatchlist;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has WatchlistId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWatchlist');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VoiceID::DescribeWatchlistResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::DescribeWatchlist - Arguments for method DescribeWatchlist on L<Paws::VoiceID>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWatchlist on the
L<Amazon Voice ID|Paws::VoiceID> service. Use the attributes of this class
as arguments to method DescribeWatchlist.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWatchlist.

=head1 SYNOPSIS

    my $voiceid = Paws->service('VoiceID');
    my $DescribeWatchlistResponse = $voiceid->DescribeWatchlist(
      DomainId    => 'MyDomainId',
      WatchlistId => 'MyWatchlistId',

    );

    # Results:
    my $Watchlist = $DescribeWatchlistResponse->Watchlist;

    # Returns a L<Paws::VoiceID::DescribeWatchlistResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voiceid/DescribeWatchlist>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The identifier of the domain that contains the watchlist.



=head2 B<REQUIRED> WatchlistId => Str

The identifier of the watchlist that you are describing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWatchlist in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

