
package Paws::AppFabric::DeleteAppBundle;
  use Moose;
  has AppBundleIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appBundleIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAppBundle');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appbundles/{appBundleIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppFabric::DeleteAppBundleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::DeleteAppBundle - Arguments for method DeleteAppBundle on L<Paws::AppFabric>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAppBundle on the
L<AppFabric|Paws::AppFabric> service. Use the attributes of this class
as arguments to method DeleteAppBundle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAppBundle.

=head1 SYNOPSIS

    my $appfabric = Paws->service('AppFabric');
    my $DeleteAppBundleResponse = $appfabric->DeleteAppBundle(
      AppBundleIdentifier => 'MyIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appfabric/DeleteAppBundle>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppBundleIdentifier => Str

The ID or Amazon Resource Name (ARN) of the app bundle that needs to be
deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAppBundle in L<Paws::AppFabric>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

