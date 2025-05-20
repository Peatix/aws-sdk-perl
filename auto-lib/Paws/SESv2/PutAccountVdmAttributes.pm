
package Paws::SESv2::PutAccountVdmAttributes;
  use Moose;
  has VdmAttributes => (is => 'ro', isa => 'Paws::SESv2::VdmAttributes', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAccountVdmAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/account/vdm');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::PutAccountVdmAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutAccountVdmAttributes - Arguments for method PutAccountVdmAttributes on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAccountVdmAttributes on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutAccountVdmAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAccountVdmAttributes.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutAccountVdmAttributesResponse = $email->PutAccountVdmAttributes(
      VdmAttributes => {
        VdmEnabled          => 'ENABLED',    # values: ENABLED, DISABLED
        DashboardAttributes => {
          EngagementMetrics => 'ENABLED',    # values: ENABLED, DISABLED
        },    # OPTIONAL
        GuardianAttributes => {
          OptimizedSharedDelivery => 'ENABLED',    # values: ENABLED, DISABLED
        },    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutAccountVdmAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VdmAttributes => L<Paws::SESv2::VdmAttributes>

The VDM attributes that you wish to apply to your Amazon SES account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAccountVdmAttributes in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

