
package Paws::Connect::DeleteViewVersion;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has ViewId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ViewId', required => 1);
  has ViewVersion => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'ViewVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteViewVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/views/{InstanceId}/{ViewId}/versions/{ViewVersion}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::DeleteViewVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DeleteViewVersion - Arguments for method DeleteViewVersion on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteViewVersion on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DeleteViewVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteViewVersion.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DeleteViewVersionResponse = $connect->DeleteViewVersion(
      InstanceId  => 'MyViewsInstanceId',
      ViewId      => 'MyViewId',
      ViewVersion => 1,

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DeleteViewVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 B<REQUIRED> ViewId => Str

The identifier of the view. Both C<ViewArn> and C<ViewId> can be used.



=head2 B<REQUIRED> ViewVersion => Int

The version number of the view.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteViewVersion in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

