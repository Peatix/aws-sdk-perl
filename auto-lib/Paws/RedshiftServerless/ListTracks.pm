
package Paws::RedshiftServerless::ListTracks;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTracks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::ListTracksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListTracks - Arguments for method ListTracks on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTracks on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method ListTracks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTracks.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $ListTracksResponse = $redshift -serverless->ListTracks(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTracksResponse->NextToken;
    my $Tracks    = $ListTracksResponse->Tracks;

    # Returns a L<Paws::RedshiftServerless::ListTracksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/ListTracks>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified MaxRecords
value, a value is returned in a marker field of the response. You can
retrieve the next set of records by retrying the command with the
returned marker value.



=head2 NextToken => Str

If your initial C<ListTracksRequest> operation returns a C<nextToken>,
you can include the returned C<nextToken> in following
C<ListTracksRequest> operations, which returns results in the next
page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTracks in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

