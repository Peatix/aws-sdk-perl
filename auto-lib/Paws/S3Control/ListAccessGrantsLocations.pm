
package Paws::S3Control::ListAccessGrantsLocations;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has LocationScope => (is => 'ro', isa => 'Str', query_name => 'locationscope', traits => ['ParamInQuery']);
  has MaxResults => (is => 'ro', isa => 'Int', query_name => 'maxResults', traits => ['ParamInQuery']);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nextToken', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccessGrantsLocations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accessgrantsinstance/locations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::ListAccessGrantsLocationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListAccessGrantsLocations - Arguments for method ListAccessGrantsLocations on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccessGrantsLocations on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method ListAccessGrantsLocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccessGrantsLocations.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $ListAccessGrantsLocationsResult =
      $s3 -control->ListAccessGrantsLocations(
      AccountId     => 'MyAccountId',
      LocationScope => 'MyS3Prefix',             # OPTIONAL
      MaxResults    => 1,                        # OPTIONAL
      NextToken     => 'MyContinuationToken',    # OPTIONAL
      );

    # Results:
    my $AccessGrantsLocationsList =
      $ListAccessGrantsLocationsResult->AccessGrantsLocationsList;
    my $NextToken = $ListAccessGrantsLocationsResult->NextToken;

    # Returns a L<Paws::S3Control::ListAccessGrantsLocationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/ListAccessGrantsLocations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the S3 Access Grants instance.



=head2 LocationScope => Str

The S3 path to the location that you are registering. The location
scope can be the default S3 location C<s3://>, the S3 path to a bucket
C<s3://E<lt>bucketE<gt>>, or the S3 path to a bucket and prefix
C<s3://E<lt>bucketE<gt>/E<lt>prefixE<gt>>. A prefix in S3 is a string
of characters at the beginning of an object key name used to organize
the objects that you store in your S3 buckets. For example, object key
names that start with the C<engineering/> prefix or object key names
that start with the C<marketing/campaigns/> prefix.



=head2 MaxResults => Int

The maximum number of access grants that you would like returned in the
C<List Access Grants> response. If the results include the pagination
token C<NextToken>, make another call using the C<NextToken> to
determine if there are more results.



=head2 NextToken => Str

A pagination token to request the next page of results. Pass this value
into a subsequent C<List Access Grants Locations> request in order to
retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccessGrantsLocations in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

