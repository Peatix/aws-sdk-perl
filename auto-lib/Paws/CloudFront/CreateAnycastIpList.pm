
package Paws::CloudFront::CreateAnycastIpList;
  use Moose;
  has IpCount => (is => 'ro', isa => 'Int', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CloudFront::Tags');


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAnycastIpList');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/anycast-ip-list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateAnycastIpListResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CreateAnycastIpListRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateAnycastIpList - Arguments for method CreateAnycastIpList on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAnycastIpList2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateAnycastIpList2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAnycastIpList2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateAnycastIpListResult = $cloudfront->CreateAnycastIpList(
      IpCount => 1,
      Name    => 'MyAnycastIpListName',
      Tags    => {
        Items => [
          {
            Key   => 'MyTagKey',      # min: 1, max: 128
            Value => 'MyTagValue',    # max: 256; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AnycastIpList = $CreateAnycastIpListResult->AnycastIpList;
    my $ETag          = $CreateAnycastIpListResult->ETag;

    # Returns a L<Paws::CloudFront::CreateAnycastIpListResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateAnycastIpList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IpCount => Int

The number of static IP addresses that are allocated to the Anycast
static IP list. Valid values: 21 or 3.



=head2 B<REQUIRED> Name => Str

Name of the Anycast static IP list.



=head2 Tags => L<Paws::CloudFront::Tags>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAnycastIpList2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

