
package Paws::FSX::UpdateSharedVpcConfiguration;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has EnableFsxRouteTableUpdatesFromParticipantAccounts => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSharedVpcConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::UpdateSharedVpcConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateSharedVpcConfiguration - Arguments for method UpdateSharedVpcConfiguration on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSharedVpcConfiguration on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method UpdateSharedVpcConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSharedVpcConfiguration.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $UpdateSharedVpcConfigurationResponse =
      $fsx->UpdateSharedVpcConfiguration(
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      EnableFsxRouteTableUpdatesFromParticipantAccounts =>
        'MyVerboseFlag',                               # OPTIONAL
      );

    # Results:
    my $EnableFsxRouteTableUpdatesFromParticipantAccounts =
      $UpdateSharedVpcConfigurationResponse
      ->EnableFsxRouteTableUpdatesFromParticipantAccounts;

    # Returns a L<Paws::FSX::UpdateSharedVpcConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/UpdateSharedVpcConfiguration>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 EnableFsxRouteTableUpdatesFromParticipantAccounts => Str

Specifies whether participant accounts can create FSx for ONTAP
Multi-AZ file systems in shared subnets. Set to C<true> to enable or
C<false> to disable.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSharedVpcConfiguration in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

