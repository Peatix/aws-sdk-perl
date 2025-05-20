
package Paws::CloudFront::AssociateDistributionWebACL;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);
  has WebACLArn => (is => 'ro', isa => 'Str', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateDistributionWebACL');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/distribution/{Id}/associate-web-acl');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::AssociateDistributionWebACLResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'AssociateDistributionWebACLRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::AssociateDistributionWebACL - Arguments for method AssociateDistributionWebACL on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateDistributionWebACL2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method AssociateDistributionWebACL2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateDistributionWebACL2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $AssociateDistributionWebACLResult =
      $cloudfront->AssociateDistributionWebACL(
      Id        => 'Mystring',
      WebACLArn => 'Mystring',
      IfMatch   => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $ETag      = $AssociateDistributionWebACLResult->ETag;
    my $Id        = $AssociateDistributionWebACLResult->Id;
    my $WebACLArn = $AssociateDistributionWebACLResult->WebACLArn;

    # Returns a L<Paws::CloudFront::AssociateDistributionWebACLResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/AssociateDistributionWebACL>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the distribution.



=head2 IfMatch => Str

The value of the C<ETag> header that you received when retrieving the
distribution that you're associating with the WAF web ACL.



=head2 B<REQUIRED> WebACLArn => Str

The Amazon Resource Name (ARN) of the WAF web ACL to associate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateDistributionWebACL2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

