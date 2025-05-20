
package Paws::WAFV2::GetMobileSdkRelease;
  use Moose;
  has Platform => (is => 'ro', isa => 'Str', required => 1);
  has ReleaseVersion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMobileSdkRelease');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::GetMobileSdkReleaseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::GetMobileSdkRelease - Arguments for method GetMobileSdkRelease on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMobileSdkRelease on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method GetMobileSdkRelease.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMobileSdkRelease.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $GetMobileSdkReleaseResponse = $wafv2->GetMobileSdkRelease(
      Platform       => 'IOS',
      ReleaseVersion => 'MyVersionKeyString',

    );

    # Results:
    my $MobileSdkRelease = $GetMobileSdkReleaseResponse->MobileSdkRelease;

    # Returns a L<Paws::WAFV2::GetMobileSdkReleaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/GetMobileSdkRelease>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Platform => Str

The device platform.

Valid values are: C<"IOS">, C<"ANDROID">

=head2 B<REQUIRED> ReleaseVersion => Str

The release version. For the latest available version, specify
C<LATEST>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMobileSdkRelease in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

