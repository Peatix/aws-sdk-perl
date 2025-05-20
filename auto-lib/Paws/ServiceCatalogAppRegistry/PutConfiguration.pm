
package Paws::ServiceCatalogAppRegistry::PutConfiguration;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::ServiceCatalogAppRegistry::AppRegistryConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::PutConfiguration - Arguments for method PutConfiguration on L<Paws::ServiceCatalogAppRegistry>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfiguration on the
L<AWS Service Catalog App Registry|Paws::ServiceCatalogAppRegistry> service. Use the attributes of this class
as arguments to method PutConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConfiguration.

=head1 SYNOPSIS

    my $servicecatalog-appregistry = Paws->service('ServiceCatalogAppRegistry');
    $servicecatalog -appregistry->PutConfiguration(
      Configuration => {
        TagQueryConfiguration => {
          TagKey => 'MyTagKeyConfig',    # max: 128; OPTIONAL
        },    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-appregistry/PutConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::ServiceCatalogAppRegistry::AppRegistryConfiguration>

Associates a C<TagKey> configuration to an account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConfiguration in L<Paws::ServiceCatalogAppRegistry>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

