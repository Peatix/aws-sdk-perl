
package Paws::MediaTailor::CreateLiveSource;
  use Moose;
  has HttpPackageConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::HttpPackageConfiguration]', required => 1);
  has LiveSourceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LiveSourceName', required => 1);
  has SourceLocationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SourceLocationName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLiveSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::CreateLiveSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::CreateLiveSource - Arguments for method CreateLiveSource on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLiveSource on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method CreateLiveSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLiveSource.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $CreateLiveSourceResponse = $api . mediatailor->CreateLiveSource(
      HttpPackageConfigurations => [
        {
          Path        => 'My__string',
          SourceGroup => 'My__string',
          Type        => 'DASH',         # values: DASH, HLS

        },
        ...
      ],
      LiveSourceName     => 'My__string',
      SourceLocationName => 'My__string',
      Tags               => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Arn          = $CreateLiveSourceResponse->Arn;
    my $CreationTime = $CreateLiveSourceResponse->CreationTime;
    my $HttpPackageConfigurations =
      $CreateLiveSourceResponse->HttpPackageConfigurations;
    my $LastModifiedTime   = $CreateLiveSourceResponse->LastModifiedTime;
    my $LiveSourceName     = $CreateLiveSourceResponse->LiveSourceName;
    my $SourceLocationName = $CreateLiveSourceResponse->SourceLocationName;
    my $Tags               = $CreateLiveSourceResponse->Tags;

    # Returns a L<Paws::MediaTailor::CreateLiveSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/CreateLiveSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpPackageConfigurations => ArrayRef[L<Paws::MediaTailor::HttpPackageConfiguration>]

A list of HTTP package configuration parameters for this live source.



=head2 B<REQUIRED> LiveSourceName => Str

The name of the live source.



=head2 B<REQUIRED> SourceLocationName => Str

The name of the source location.



=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

The tags to assign to the live source. Tags are key-value pairs that
you can associate with Amazon resources to help with organization,
access control, and cost tracking. For more information, see Tagging
AWS Elemental MediaTailor Resources
(https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLiveSource in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

