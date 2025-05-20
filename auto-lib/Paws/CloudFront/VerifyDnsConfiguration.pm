
package Paws::CloudFront::VerifyDnsConfiguration;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has Identifier => (is => 'ro', isa => 'Str', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDnsConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/verify-dns-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::VerifyDnsConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'VerifyDnsConfigurationRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::VerifyDnsConfiguration - Arguments for method VerifyDnsConfiguration on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method VerifyDnsConfiguration2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method VerifyDnsConfiguration2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to VerifyDnsConfiguration2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $VerifyDnsConfigurationResult = $cloudfront->VerifyDnsConfiguration(
      Identifier => 'Mystring',
      Domain     => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $DnsConfigurationList =
      $VerifyDnsConfigurationResult->DnsConfigurationList;

    # Returns a L<Paws::CloudFront::VerifyDnsConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/VerifyDnsConfiguration>

=head1 ATTRIBUTES


=head2 Domain => Str

The domain name that you're verifying.



=head2 B<REQUIRED> Identifier => Str

The identifier of the distribution tenant. You can specify the ARN, ID,
or name of the distribution tenant.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method VerifyDnsConfiguration2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

