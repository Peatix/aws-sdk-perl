
package Paws::ConnectCases::GetTemplate;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'templateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/templates/{templateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::GetTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::GetTemplate - Arguments for method GetTemplate on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTemplate on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method GetTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTemplate.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $GetTemplateResponse = $cases->GetTemplate(
      DomainId   => 'MyDomainId',
      TemplateId => 'MyTemplateId',

    );

    # Results:
    my $CreatedTime         = $GetTemplateResponse->CreatedTime;
    my $Deleted             = $GetTemplateResponse->Deleted;
    my $Description         = $GetTemplateResponse->Description;
    my $LastModifiedTime    = $GetTemplateResponse->LastModifiedTime;
    my $LayoutConfiguration = $GetTemplateResponse->LayoutConfiguration;
    my $Name                = $GetTemplateResponse->Name;
    my $RequiredFields      = $GetTemplateResponse->RequiredFields;
    my $Rules               = $GetTemplateResponse->Rules;
    my $Status              = $GetTemplateResponse->Status;
    my $Tags                = $GetTemplateResponse->Tags;
    my $TemplateArn         = $GetTemplateResponse->TemplateArn;
    my $TemplateId          = $GetTemplateResponse->TemplateId;

    # Returns a L<Paws::ConnectCases::GetTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/GetTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 B<REQUIRED> TemplateId => Str

A unique identifier of a template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTemplate in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

