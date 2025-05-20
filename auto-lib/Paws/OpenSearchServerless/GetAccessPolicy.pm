
package Paws::OpenSearchServerless::GetAccessPolicy;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccessPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::GetAccessPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::GetAccessPolicy - Arguments for method GetAccessPolicy on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccessPolicy on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method GetAccessPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccessPolicy.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $GetAccessPolicyResponse = $aoss->GetAccessPolicy(
      Name => 'MyPolicyName',
      Type => 'data',

    );

    # Results:
    my $AccessPolicyDetail = $GetAccessPolicyResponse->AccessPolicyDetail;

    # Returns a L<Paws::OpenSearchServerless::GetAccessPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/GetAccessPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the access policy.



=head2 B<REQUIRED> Type => Str

Tye type of policy. Currently, the only supported value is C<data>.

Valid values are: C<"data">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccessPolicy in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

