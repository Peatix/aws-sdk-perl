
package Paws::SSOAdmin::TagResource;
  use Moose;
  has InstanceArn => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSOAdmin::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::TagResource - Arguments for method TagResource on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $TagResourceResponse = $sso->TagResource(
      ResourceArn => 'MyTaggableResourceArn',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],
      InstanceArn => 'MyInstanceArn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/TagResource>

=head1 ATTRIBUTES


=head2 InstanceArn => Str

The ARN of the IAM Identity Center instance under which the operation
will be executed. For more information about ARNs, see Amazon Resource
Names (ARNs) and Amazon Web Services Service Namespaces in the I<Amazon
Web Services General Reference>.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource with the tags to be listed.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::SSOAdmin::Tag>]

A set of key-value pairs that are used to manage the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

