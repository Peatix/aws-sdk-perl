
package Paws::SecurityHub::BatchGetSecurityControls;
  use Moose;
  has SecurityControlIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetSecurityControls');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/securityControls/batchGet');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::BatchGetSecurityControlsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchGetSecurityControls - Arguments for method BatchGetSecurityControls on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetSecurityControls on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method BatchGetSecurityControls.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetSecurityControls.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $BatchGetSecurityControlsResponse =
      $securityhub->BatchGetSecurityControls(
      SecurityControlIds => [ 'MyNonEmptyString', ... ],

      );

    # Results:
    my $SecurityControls = $BatchGetSecurityControlsResponse->SecurityControls;
    my $UnprocessedIds   = $BatchGetSecurityControlsResponse->UnprocessedIds;

    # Returns a L<Paws::SecurityHub::BatchGetSecurityControlsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/BatchGetSecurityControls>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityControlIds => ArrayRef[Str|Undef]

A list of security controls (identified with C<SecurityControlId>,
C<SecurityControlArn>, or a mix of both parameters). The security
control ID or Amazon Resource Name (ARN) is the same across standards.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetSecurityControls in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

