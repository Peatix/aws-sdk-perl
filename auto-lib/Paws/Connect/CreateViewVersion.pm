
package Paws::Connect::CreateViewVersion;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has VersionDescription => (is => 'ro', isa => 'Str');
  has ViewContentSha256 => (is => 'ro', isa => 'Str');
  has ViewId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ViewId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateViewVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/views/{InstanceId}/{ViewId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateViewVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateViewVersion - Arguments for method CreateViewVersion on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateViewVersion on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateViewVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateViewVersion.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateViewVersionResponse = $connect->CreateViewVersion(
      InstanceId         => 'MyViewsInstanceId',
      ViewId             => 'MyViewId',
      VersionDescription => 'MyViewDescription',      # OPTIONAL
      ViewContentSha256  => 'MyViewContentSha256',    # OPTIONAL
    );

    # Results:
    my $View = $CreateViewVersionResponse->View;

    # Returns a L<Paws::Connect::CreateViewVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateViewVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 VersionDescription => Str

The description for the version being published.



=head2 ViewContentSha256 => Str

Indicates the checksum value of the latest published view content.



=head2 B<REQUIRED> ViewId => Str

The identifier of the view. Both C<ViewArn> and C<ViewId> can be used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateViewVersion in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

