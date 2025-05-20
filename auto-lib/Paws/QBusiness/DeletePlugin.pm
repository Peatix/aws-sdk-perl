
package Paws::QBusiness::DeletePlugin;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has PluginId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'pluginId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePlugin');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/plugins/{pluginId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::DeletePluginResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::DeletePlugin - Arguments for method DeletePlugin on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePlugin on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method DeletePlugin.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePlugin.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $DeletePluginResponse = $qbusiness->DeletePlugin(
      ApplicationId => 'MyApplicationId',
      PluginId      => 'MyPluginId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/DeletePlugin>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier the application attached to the Amazon Q Business
plugin.



=head2 B<REQUIRED> PluginId => Str

The identifier of the plugin being deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePlugin in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

