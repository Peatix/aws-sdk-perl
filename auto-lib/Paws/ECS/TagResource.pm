
package Paws::ECS::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::TagResource - Arguments for method TagResource on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To tag a cluster.
    # This example tags the 'dev' cluster with key 'team' and value 'dev'.
    my $TagResourceResponse = $ecs->TagResource(
      'ResourceArn' => 'arn:aws:ecs:region:aws_account_id:cluster/dev',
      'Tags'        => [

        {
          'Key'   => 'team',
          'Value' => 'dev'
        }
      ]
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource to add tags to.
Currently, the supported resources are Amazon ECS capacity providers,
tasks, services, task definitions, clusters, and container instances.

In order to tag a service that has the following ARN format, you need
to migrate the service to the long ARN. For more information, see
Migrate an Amazon ECS short service ARN to a long ARN
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-arn-migration.html)
in the I<Amazon Elastic Container Service Developer Guide>.

C<arn:aws:ecs:region:aws_account_id:service/service-name>

After the migration is complete, the service has the long ARN format,
as shown below. Use this ARN to tag the service.

C<arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name>

If you try to tag a service with a short ARN, you receive an
C<InvalidParameterException> error.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::ECS::Tag>]

The tags to add to the resource. A tag is an array of key-value pairs.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8

=item *

Maximum value length - 256 Unicode characters in UTF-8

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case-sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for Amazon
Web Services use. You cannot edit or delete tag keys or values with
this prefix. Tags with this prefix do not count against your tags per
resource limit.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

