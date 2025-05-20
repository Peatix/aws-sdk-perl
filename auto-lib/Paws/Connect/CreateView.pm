
package Paws::Connect::CreateView;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Content => (is => 'ro', isa => 'Paws::Connect::ViewInputContent', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateView');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/views/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateViewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateView - Arguments for method CreateView on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateView on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateView.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateViewResponse = $connect->CreateView(
      Content => {
        Actions => [
          'MyViewAction', ...    # min: 1, max: 255
        ],    # OPTIONAL
        Template => 'MyViewTemplate',    # OPTIONAL
      },
      InstanceId  => 'MyViewsInstanceId',
      Name        => 'MyViewName',
      Status      => 'PUBLISHED',
      ClientToken => 'MyViewsClientToken',    # OPTIONAL
      Description => 'MyViewDescription',     # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $View = $CreateViewResponse->View;

    # Returns a L<Paws::Connect::CreateViewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateView>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique Id for each create view request to avoid duplicate view
creation. For example, the view is idempotent ClientToken is provided.



=head2 B<REQUIRED> Content => L<Paws::Connect::ViewInputContent>

View content containing all content necessary to render a view except
for runtime input data.

The total uncompressed content has a maximum file size of 400kB.



=head2 Description => Str

The description of the view.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 B<REQUIRED> Name => Str

The name of the view.



=head2 B<REQUIRED> Status => Str

Indicates the view status as either C<SAVED> or C<PUBLISHED>. The
C<PUBLISHED> status will initiate validation on the content.

Valid values are: C<"PUBLISHED">, C<"SAVED">

=head2 Tags => L<Paws::Connect::TagMap>

The tags associated with the view resource (not specific to view
version).These tags can be used to organize, track, or control access
for this resource. For example, { "tags": {"key1":"value1",
"key2":"value2"} }.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateView in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

