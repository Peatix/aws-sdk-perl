
package Paws::Shield::EnableApplicationLayerAutomaticResponse;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::Shield::ResponseAction', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableApplicationLayerAutomaticResponse');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::EnableApplicationLayerAutomaticResponseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::EnableApplicationLayerAutomaticResponse - Arguments for method EnableApplicationLayerAutomaticResponse on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableApplicationLayerAutomaticResponse on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method EnableApplicationLayerAutomaticResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableApplicationLayerAutomaticResponse.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $EnableApplicationLayerAutomaticResponseResponse =
      $shield->EnableApplicationLayerAutomaticResponse(
      Action => {
        Block => {

        },    # OPTIONAL
        Count => {

        },    # OPTIONAL
      },
      ResourceArn => 'MyResourceArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/EnableApplicationLayerAutomaticResponse>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => L<Paws::Shield::ResponseAction>

Specifies the action setting that Shield Advanced should use in the WAF
rules that it creates on behalf of the protected resource in response
to DDoS attacks. You specify this as part of the configuration for the
automatic application layer DDoS mitigation feature, when you enable or
update automatic mitigation. Shield Advanced creates the WAF rules in a
Shield Advanced-managed rule group, inside the web ACL that you have
associated with the resource.



=head2 B<REQUIRED> ResourceArn => Str

The ARN (Amazon Resource Name) of the protected resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableApplicationLayerAutomaticResponse in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

