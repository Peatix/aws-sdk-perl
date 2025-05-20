
package Paws::EKS::DeleteAddon;
  use Moose;
  has AddonName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'addonName', required => 1);
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Preserve => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'preserve');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAddon');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/addons/{addonName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::DeleteAddonResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DeleteAddon - Arguments for method DeleteAddon on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAddon on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method DeleteAddon.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAddon.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $DeleteAddonResponse = $eks->DeleteAddon(
      AddonName   => 'MyString',
      ClusterName => 'MyClusterName',
      Preserve    => 1,                 # OPTIONAL
    );

    # Results:
    my $Addon = $DeleteAddonResponse->Addon;

    # Returns a L<Paws::EKS::DeleteAddonResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/DeleteAddon>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddonName => Str

The name of the add-on. The name must match one of the names returned
by C<ListAddons>
(https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html).



=head2 B<REQUIRED> ClusterName => Str

The name of your cluster.



=head2 Preserve => Bool

Specifying this option preserves the add-on software on your cluster
but Amazon EKS stops managing any settings for the add-on. If an IAM
account is associated with the add-on, it isn't removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAddon in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

