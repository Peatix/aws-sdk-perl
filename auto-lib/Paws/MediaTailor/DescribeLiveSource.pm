
package Paws::MediaTailor::DescribeLiveSource;
  use Moose;
  has LiveSourceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LiveSourceName', required => 1);
  has SourceLocationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SourceLocationName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLiveSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::DescribeLiveSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::DescribeLiveSource - Arguments for method DescribeLiveSource on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLiveSource on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method DescribeLiveSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLiveSource.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $DescribeLiveSourceResponse = $api . mediatailor->DescribeLiveSource(
      LiveSourceName     => 'My__string',
      SourceLocationName => 'My__string',

    );

    # Results:
    my $Arn          = $DescribeLiveSourceResponse->Arn;
    my $CreationTime = $DescribeLiveSourceResponse->CreationTime;
    my $HttpPackageConfigurations =
      $DescribeLiveSourceResponse->HttpPackageConfigurations;
    my $LastModifiedTime   = $DescribeLiveSourceResponse->LastModifiedTime;
    my $LiveSourceName     = $DescribeLiveSourceResponse->LiveSourceName;
    my $SourceLocationName = $DescribeLiveSourceResponse->SourceLocationName;
    my $Tags               = $DescribeLiveSourceResponse->Tags;

    # Returns a L<Paws::MediaTailor::DescribeLiveSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/DescribeLiveSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LiveSourceName => Str

The name of the live source.



=head2 B<REQUIRED> SourceLocationName => Str

The name of the source location associated with this Live Source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLiveSource in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

