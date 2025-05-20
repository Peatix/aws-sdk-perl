
package Paws::OpenSearchServerless::GetSecurityConfig;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSecurityConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::GetSecurityConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::GetSecurityConfig - Arguments for method GetSecurityConfig on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSecurityConfig on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method GetSecurityConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSecurityConfig.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $GetSecurityConfigResponse = $aoss->GetSecurityConfig(
      Id => 'MySecurityConfigId',

    );

    # Results:
    my $SecurityConfigDetail = $GetSecurityConfigResponse->SecurityConfigDetail;

    # Returns a L<Paws::OpenSearchServerless::GetSecurityConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/GetSecurityConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier of the security configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSecurityConfig in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

