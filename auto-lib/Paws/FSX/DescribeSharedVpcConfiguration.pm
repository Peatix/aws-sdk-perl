
package Paws::FSX::DescribeSharedVpcConfiguration;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSharedVpcConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::DescribeSharedVpcConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeSharedVpcConfiguration - Arguments for method DescribeSharedVpcConfiguration on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSharedVpcConfiguration on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method DescribeSharedVpcConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSharedVpcConfiguration.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $DescribeSharedVpcConfigurationResponse =
      $fsx->DescribeSharedVpcConfiguration();

    # Results:
    my $EnableFsxRouteTableUpdatesFromParticipantAccounts =
      $DescribeSharedVpcConfigurationResponse
      ->EnableFsxRouteTableUpdatesFromParticipantAccounts;

    # Returns a L<Paws::FSX::DescribeSharedVpcConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/DescribeSharedVpcConfiguration>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSharedVpcConfiguration in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

