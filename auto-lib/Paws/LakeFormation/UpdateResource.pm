
package Paws::LakeFormation::UpdateResource;
  use Moose;
  has HybridAccessEnabled => (is => 'ro', isa => 'Bool');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has WithFederation => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateResource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::UpdateResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::UpdateResource - Arguments for method UpdateResource on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResource on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method UpdateResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResource.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $UpdateResourceResponse = $lakeformation->UpdateResource(
      ResourceArn         => 'MyResourceArnString',
      RoleArn             => 'MyIAMRoleArn',
      HybridAccessEnabled => 1,                       # OPTIONAL
      WithFederation      => 1,                       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/UpdateResource>

=head1 ATTRIBUTES


=head2 HybridAccessEnabled => Bool

Specifies whether the data access of tables pointing to the location
can be managed by both Lake Formation permissions as well as Amazon S3
bucket policies.



=head2 B<REQUIRED> ResourceArn => Str

The resource ARN.



=head2 B<REQUIRED> RoleArn => Str

The new role to use for the given resource registered in Lake
Formation.



=head2 WithFederation => Bool

Whether or not the resource is a federated resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResource in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

