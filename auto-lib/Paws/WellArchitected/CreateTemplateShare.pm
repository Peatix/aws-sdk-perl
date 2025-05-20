
package Paws::WellArchitected::CreateTemplateShare;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has SharedWith => (is => 'ro', isa => 'Str', required => 1);
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTemplateShare');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/templates/shares/{TemplateArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::CreateTemplateShareOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::CreateTemplateShare - Arguments for method CreateTemplateShare on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTemplateShare on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method CreateTemplateShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTemplateShare.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $CreateTemplateShareOutput = $wellarchitected->CreateTemplateShare(
      ClientRequestToken => 'MyClientRequestToken',
      SharedWith         => 'MySharedWith',
      TemplateArn        => 'MyTemplateArn',

    );

    # Results:
    my $ShareId     = $CreateTemplateShareOutput->ShareId;
    my $TemplateArn = $CreateTemplateShareOutput->TemplateArn;

    # Returns a L<Paws::WellArchitected::CreateTemplateShareOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/CreateTemplateShare>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str





=head2 B<REQUIRED> SharedWith => Str





=head2 B<REQUIRED> TemplateArn => Str

The review template ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTemplateShare in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

