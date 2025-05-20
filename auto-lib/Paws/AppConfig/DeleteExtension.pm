
package Paws::AppConfig::DeleteExtension;
  use Moose;
  has ExtensionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ExtensionIdentifier', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'version');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteExtension');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/extensions/{ExtensionIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::DeleteExtension - Arguments for method DeleteExtension on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteExtension on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method DeleteExtension.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteExtension.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    $appconfig->DeleteExtension(
      ExtensionIdentifier => 'MyIdentifier',
      VersionNumber       => 1,                # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/DeleteExtension>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExtensionIdentifier => Str

The name, ID, or Amazon Resource Name (ARN) of the extension you want
to delete.



=head2 VersionNumber => Int

A specific version of an extension to delete. If omitted, the highest
version is deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteExtension in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

