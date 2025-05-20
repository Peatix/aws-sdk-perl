
package Paws::Organizations::PutResourcePolicy;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::PutResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $PutResourcePolicyResponse = $organizations->PutResourcePolicy(
      Content => 'MyResourcePolicyContent',
      Tags    => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ResourcePolicy = $PutResourcePolicyResponse->ResourcePolicy;

    # Returns a L<Paws::Organizations::PutResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

If provided, the new content for the resource policy. The text must be
correctly formatted JSON that complies with the syntax for the resource
policy's type. For more information, see SCP syntax
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps_syntax.html)
in the I<Organizations User Guide>.



=head2 Tags => ArrayRef[L<Paws::Organizations::Tag>]

A list of tags that you want to attach to the newly created resource
policy. For each tag in the list, you must specify both a tag key and a
value. You can set the value to an empty string, but you can't set it
to C<null>. For more information about tagging, see Tagging
Organizations resources
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html)
in the Organizations User Guide.

Calls with tags apply to the initial creation of the resource policy,
otherwise an exception is thrown. If any one of the tags is not valid
or if you exceed the allowed number of tags for the resource policy,
then the entire request fails and the resource policy is not created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

