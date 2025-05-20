
package Paws::FSX::StartMisconfiguredStateRecovery;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMisconfiguredStateRecovery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::StartMisconfiguredStateRecoveryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::StartMisconfiguredStateRecovery - Arguments for method StartMisconfiguredStateRecovery on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMisconfiguredStateRecovery on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method StartMisconfiguredStateRecovery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMisconfiguredStateRecovery.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $StartMisconfiguredStateRecoveryResponse =
      $fsx->StartMisconfiguredStateRecovery(
      FileSystemId       => 'MyFileSystemId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      );

    # Results:
    my $FileSystem = $StartMisconfiguredStateRecoveryResponse->FileSystem;

    # Returns a L<Paws::FSX::StartMisconfiguredStateRecoveryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/StartMisconfiguredStateRecovery>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 B<REQUIRED> FileSystemId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMisconfiguredStateRecovery in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

