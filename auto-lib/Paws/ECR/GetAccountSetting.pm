
package Paws::ECR::GetAccountSetting;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountSetting');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::GetAccountSettingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetAccountSetting - Arguments for method GetAccountSetting on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccountSetting on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method GetAccountSetting.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccountSetting.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $GetAccountSettingResponse = $api . ecr->GetAccountSetting(
      Name => 'MyAccountSettingName',

    );

    # Results:
    my $Name  = $GetAccountSettingResponse->Name;
    my $Value = $GetAccountSettingResponse->Value;

    # Returns a L<Paws::ECR::GetAccountSettingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/GetAccountSetting>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the account setting, such as C<BASIC_SCAN_TYPE_VERSION> or
C<REGISTRY_POLICY_SCOPE>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccountSetting in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

