
package Paws::MediaTailor::DeleteLiveSource;
  use Moose;
  has LiveSourceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LiveSourceName', required => 1);
  has SourceLocationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SourceLocationName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLiveSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::DeleteLiveSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::DeleteLiveSource - Arguments for method DeleteLiveSource on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLiveSource on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method DeleteLiveSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLiveSource.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $DeleteLiveSourceResponse = $api . mediatailor->DeleteLiveSource(
      LiveSourceName     => 'My__string',
      SourceLocationName => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/DeleteLiveSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LiveSourceName => Str

The name of the live source.



=head2 B<REQUIRED> SourceLocationName => Str

The name of the source location associated with this Live Source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLiveSource in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

