package Paws::B2bi;
  use Moose;
  sub service { 'b2bi' }
  sub signing_name { 'b2bi' }
  sub version { '2022-06-23' }
  sub target_prefix { 'B2BI' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateCapability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::CreateCapability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePartnership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::CreatePartnership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::CreateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStarterMappingTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::CreateStarterMappingTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransformer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::CreateTransformer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCapability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::DeleteCapability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePartnership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::DeletePartnership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::DeleteProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransformer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::DeleteTransformer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::GenerateMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCapability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::GetCapability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPartnership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::GetPartnership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::GetProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransformer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::GetTransformer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransformerJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::GetTransformerJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCapabilities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::ListCapabilities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPartnerships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::ListPartnerships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::ListProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTransformers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::ListTransformers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTransformerJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::StartTransformerJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestConversion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::TestConversion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::TestMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestParsing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::TestParsing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCapability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::UpdateCapability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePartnership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::UpdatePartnership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::UpdateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTransformer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::B2bi::UpdateTransformer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCapabilities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCapabilities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCapabilities(@_, nextToken => $next_result->nextToken);
        push @{ $result->capabilities }, @{ $next_result->capabilities };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'capabilities') foreach (@{ $result->capabilities });
        $result = $self->ListCapabilities(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'capabilities') foreach (@{ $result->capabilities });
    }

    return undef
  }
  sub ListAllPartnerships {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPartnerships(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPartnerships(@_, nextToken => $next_result->nextToken);
        push @{ $result->partnerships }, @{ $next_result->partnerships };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'partnerships') foreach (@{ $result->partnerships });
        $result = $self->ListPartnerships(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'partnerships') foreach (@{ $result->partnerships });
    }

    return undef
  }
  sub ListAllProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->profiles }, @{ $next_result->profiles };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'profiles') foreach (@{ $result->profiles });
        $result = $self->ListProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'profiles') foreach (@{ $result->profiles });
    }

    return undef
  }
  sub ListAllTransformers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTransformers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTransformers(@_, nextToken => $next_result->nextToken);
        push @{ $result->transformers }, @{ $next_result->transformers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'transformers') foreach (@{ $result->transformers });
        $result = $self->ListTransformers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'transformers') foreach (@{ $result->transformers });
    }

    return undef
  }


  sub operations { qw/CreateCapability CreatePartnership CreateProfile CreateStarterMappingTemplate CreateTransformer DeleteCapability DeletePartnership DeleteProfile DeleteTransformer GenerateMapping GetCapability GetPartnership GetProfile GetTransformer GetTransformerJob ListCapabilities ListPartnerships ListProfiles ListTagsForResource ListTransformers StartTransformerJob TagResource TestConversion TestMapping TestParsing UntagResource UpdateCapability UpdatePartnership UpdateProfile UpdateTransformer / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi - Perl Interface to AWS AWS B2B Data Interchange

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('B2bi');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

This is the I<Amazon Web Services B2B Data Interchange API Reference>.
It provides descriptions, API request parameters, and the XML response
for each of the B2BI API actions.

B2BI enables automated exchange of EDI (electronic data interchange)
based business-critical transactions at cloud scale, with elasticity
and pay-as-you-go pricing. Businesses use EDI documents to exchange
transactional data with trading partners, such as suppliers and end
customers, using standardized formats such as X12.

Rather than actually running a command, you can use the
C<--generate-cli-skeleton> parameter with any API call to generate and
display a parameter template. You can then use the generated template
to customize and use as input on a later command. For details, see
Generate and use a parameter skeleton file
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-skeleton.html#cli-usage-skeleton-generate).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateCapability

=over

=item Configuration => L<Paws::B2bi::CapabilityConfiguration>

=item Name => Str

=item Type => Str

=item [ClientToken => Str]

=item [InstructionsDocuments => ArrayRef[L<Paws::B2bi::S3Location>]]

=item [Tags => ArrayRef[L<Paws::B2bi::Tag>]]


=back

Each argument is described in detail in: L<Paws::B2bi::CreateCapability>

Returns: a L<Paws::B2bi::CreateCapabilityResponse> instance

Instantiates a capability based on the specified parameters. A trading
capability contains the information required to transform incoming EDI
documents into JSON or XML outputs.


=head2 CreatePartnership

=over

=item Capabilities => ArrayRef[Str|Undef]

=item Email => Str

=item Name => Str

=item ProfileId => Str

=item [CapabilityOptions => L<Paws::B2bi::CapabilityOptions>]

=item [ClientToken => Str]

=item [Phone => Str]

=item [Tags => ArrayRef[L<Paws::B2bi::Tag>]]


=back

Each argument is described in detail in: L<Paws::B2bi::CreatePartnership>

Returns: a L<Paws::B2bi::CreatePartnershipResponse> instance

Creates a partnership between a customer and a trading partner, based
on the supplied parameters. A partnership represents the connection
between you and your trading partner. It ties together a profile and
one or more trading capabilities.


=head2 CreateProfile

=over

=item BusinessName => Str

=item Logging => Str

=item Name => Str

=item Phone => Str

=item [ClientToken => Str]

=item [Email => Str]

=item [Tags => ArrayRef[L<Paws::B2bi::Tag>]]


=back

Each argument is described in detail in: L<Paws::B2bi::CreateProfile>

Returns: a L<Paws::B2bi::CreateProfileResponse> instance

Creates a customer profile. You can have up to five customer profiles,
each representing a distinct private network. A profile is the
mechanism used to create the concept of a private network.


=head2 CreateStarterMappingTemplate

=over

=item MappingType => Str

=item TemplateDetails => L<Paws::B2bi::TemplateDetails>

=item [OutputSampleLocation => L<Paws::B2bi::S3Location>]


=back

Each argument is described in detail in: L<Paws::B2bi::CreateStarterMappingTemplate>

Returns: a L<Paws::B2bi::CreateStarterMappingTemplateResponse> instance

Amazon Web Services B2B Data Interchange uses a mapping template in
JSONata or XSLT format to transform a customer input file into a JSON
or XML file that can be converted to EDI.

If you provide a sample EDI file with the same structure as the EDI
files that you wish to generate, then the service can generate a
mapping template. The starter template contains placeholder values
which you can replace with JSONata or XSLT expressions to take data
from your input file and insert it into the JSON or XML file that is
used to generate the EDI.

If you do not provide a sample EDI file, then the service can generate
a mapping template based on the EDI settings in the C<templateDetails>
parameter.

Currently, we only support generating a template that can generate the
input to produce an Outbound X12 EDI file.


=head2 CreateTransformer

=over

=item Name => Str

=item [ClientToken => Str]

=item [EdiType => L<Paws::B2bi::EdiType>]

=item [FileFormat => Str]

=item [InputConversion => L<Paws::B2bi::InputConversion>]

=item [Mapping => L<Paws::B2bi::Mapping>]

=item [MappingTemplate => Str]

=item [OutputConversion => L<Paws::B2bi::OutputConversion>]

=item [SampleDocument => Str]

=item [SampleDocuments => L<Paws::B2bi::SampleDocuments>]

=item [Tags => ArrayRef[L<Paws::B2bi::Tag>]]


=back

Each argument is described in detail in: L<Paws::B2bi::CreateTransformer>

Returns: a L<Paws::B2bi::CreateTransformerResponse> instance

Creates a transformer. Amazon Web Services B2B Data Interchange
currently supports two scenarios:

=over

=item *

I<Inbound EDI>: the Amazon Web Services customer receives an EDI file
from their trading partner. Amazon Web Services B2B Data Interchange
converts this EDI file into a JSON or XML file with a service-defined
structure. A mapping template provided by the customer, in JSONata or
XSLT format, is optionally applied to this file to produce a JSON or
XML file with the structure the customer requires.

=item *

I<Outbound EDI>: the Amazon Web Services customer has a JSON or XML
file containing data that they wish to use in an EDI file. A mapping
template, provided by the customer (in either JSONata or XSLT format)
is applied to this file to generate a JSON or XML file in the
service-defined structure. This file is then converted to an EDI file.

=back

The following fields are provided for backwards compatibility only:
C<fileFormat>, C<mappingTemplate>, C<ediType>, and C<sampleDocument>.

=over

=item *

Use the C<mapping> data type in place of C<mappingTemplate> and
C<fileFormat>

=item *

Use the C<sampleDocuments> data type in place of C<sampleDocument>

=item *

Use either the C<inputConversion> or C<outputConversion> in place of
C<ediType>

=back



=head2 DeleteCapability

=over

=item CapabilityId => Str


=back

Each argument is described in detail in: L<Paws::B2bi::DeleteCapability>

Returns: nothing

Deletes the specified capability. A trading capability contains the
information required to transform incoming EDI documents into JSON or
XML outputs.


=head2 DeletePartnership

=over

=item PartnershipId => Str


=back

Each argument is described in detail in: L<Paws::B2bi::DeletePartnership>

Returns: nothing

Deletes the specified partnership. A partnership represents the
connection between you and your trading partner. It ties together a
profile and one or more trading capabilities.


=head2 DeleteProfile

=over

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::B2bi::DeleteProfile>

Returns: nothing

Deletes the specified profile. A profile is the mechanism used to
create the concept of a private network.


=head2 DeleteTransformer

=over

=item TransformerId => Str


=back

Each argument is described in detail in: L<Paws::B2bi::DeleteTransformer>

Returns: nothing

Deletes the specified transformer. A transformer can take an EDI file
as input and transform it into a JSON-or XML-formatted document.
Alternatively, a transformer can take a JSON-or XML-formatted document
as input and transform it into an EDI file.


=head2 GenerateMapping

=over

=item InputFileContent => Str

=item MappingType => Str

=item OutputFileContent => Str


=back

Each argument is described in detail in: L<Paws::B2bi::GenerateMapping>

Returns: a L<Paws::B2bi::GenerateMappingResponse> instance

Takes sample input and output documents and uses Amazon Bedrock to
generate a mapping automatically. Depending on the accuracy and other
factors, you can then edit the mapping for your needs.

Before you can use the AI-assisted feature for Amazon Web Services B2B
Data Interchange you must enable models in Amazon Bedrock. For details,
see AI-assisted template mapping prerequisites
(https://docs.aws.amazon.com/b2bi/latest/userguide/ai-assisted-mapping.html#ai-assist-prereq)
in the I<Amazon Web Services B2B Data Interchange User guide>.


=head2 GetCapability

=over

=item CapabilityId => Str


=back

Each argument is described in detail in: L<Paws::B2bi::GetCapability>

Returns: a L<Paws::B2bi::GetCapabilityResponse> instance

Retrieves the details for the specified capability. A trading
capability contains the information required to transform incoming EDI
documents into JSON or XML outputs.


=head2 GetPartnership

=over

=item PartnershipId => Str


=back

Each argument is described in detail in: L<Paws::B2bi::GetPartnership>

Returns: a L<Paws::B2bi::GetPartnershipResponse> instance

Retrieves the details for a partnership, based on the partner and
profile IDs specified. A partnership represents the connection between
you and your trading partner. It ties together a profile and one or
more trading capabilities.


=head2 GetProfile

=over

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::B2bi::GetProfile>

Returns: a L<Paws::B2bi::GetProfileResponse> instance

Retrieves the details for the profile specified by the profile ID. A
profile is the mechanism used to create the concept of a private
network.


=head2 GetTransformer

=over

=item TransformerId => Str


=back

Each argument is described in detail in: L<Paws::B2bi::GetTransformer>

Returns: a L<Paws::B2bi::GetTransformerResponse> instance

Retrieves the details for the transformer specified by the transformer
ID. A transformer can take an EDI file as input and transform it into a
JSON-or XML-formatted document. Alternatively, a transformer can take a
JSON-or XML-formatted document as input and transform it into an EDI
file.


=head2 GetTransformerJob

=over

=item TransformerId => Str

=item TransformerJobId => Str


=back

Each argument is described in detail in: L<Paws::B2bi::GetTransformerJob>

Returns: a L<Paws::B2bi::GetTransformerJobResponse> instance

Returns the details of the transformer run, based on the Transformer
job ID.


=head2 ListCapabilities

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::B2bi::ListCapabilities>

Returns: a L<Paws::B2bi::ListCapabilitiesResponse> instance

Lists the capabilities associated with your Amazon Web Services account
for your current or specified region. A trading capability contains the
information required to transform incoming EDI documents into JSON or
XML outputs.


=head2 ListPartnerships

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProfileId => Str]


=back

Each argument is described in detail in: L<Paws::B2bi::ListPartnerships>

Returns: a L<Paws::B2bi::ListPartnershipsResponse> instance

Lists the partnerships associated with your Amazon Web Services account
for your current or specified region. A partnership represents the
connection between you and your trading partner. It ties together a
profile and one or more trading capabilities.


=head2 ListProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::B2bi::ListProfiles>

Returns: a L<Paws::B2bi::ListProfilesResponse> instance

Lists the profiles associated with your Amazon Web Services account for
your current or specified region. A profile is the mechanism used to
create the concept of a private network.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::B2bi::ListTagsForResource>

Returns: a L<Paws::B2bi::ListTagsForResourceResponse> instance

Lists all of the tags associated with the Amazon Resource Name (ARN)
that you specify. The resource can be a capability, partnership,
profile, or transformer.


=head2 ListTransformers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::B2bi::ListTransformers>

Returns: a L<Paws::B2bi::ListTransformersResponse> instance

Lists the available transformers. A transformer can take an EDI file as
input and transform it into a JSON-or XML-formatted document.
Alternatively, a transformer can take a JSON-or XML-formatted document
as input and transform it into an EDI file.


=head2 StartTransformerJob

=over

=item InputFile => L<Paws::B2bi::S3Location>

=item OutputLocation => L<Paws::B2bi::S3Location>

=item TransformerId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::B2bi::StartTransformerJob>

Returns: a L<Paws::B2bi::StartTransformerJobResponse> instance

Runs a job, using a transformer, to parse input EDI (electronic data
interchange) file into the output structures used by Amazon Web
Services B2B Data Interchange.

If you only want to transform EDI (electronic data interchange)
documents, you don't need to create profiles, partnerships or
capabilities. Just create and configure a transformer, and then run the
C<StartTransformerJob> API to process your files.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::B2bi::Tag>]


=back

Each argument is described in detail in: L<Paws::B2bi::TagResource>

Returns: nothing

Attaches a key-value pair to a resource, as identified by its Amazon
Resource Name (ARN). Resources are capability, partnership, profile,
transformers and other entities.

There is no response returned from this call.


=head2 TestConversion

=over

=item Source => L<Paws::B2bi::ConversionSource>

=item Target => L<Paws::B2bi::ConversionTarget>


=back

Each argument is described in detail in: L<Paws::B2bi::TestConversion>

Returns: a L<Paws::B2bi::TestConversionResponse> instance

This operation mimics the latter half of a typical Outbound EDI
request. It takes an input JSON/XML in the B2Bi shape as input,
converts it to an X12 EDI string, and return that string.


=head2 TestMapping

=over

=item FileFormat => Str

=item InputFileContent => Str

=item MappingTemplate => Str


=back

Each argument is described in detail in: L<Paws::B2bi::TestMapping>

Returns: a L<Paws::B2bi::TestMappingResponse> instance

Maps the input file according to the provided template file. The API
call downloads the file contents from the Amazon S3 location, and
passes the contents in as a string, to the C<inputFileContent>
parameter.


=head2 TestParsing

=over

=item EdiType => L<Paws::B2bi::EdiType>

=item FileFormat => Str

=item InputFile => L<Paws::B2bi::S3Location>


=back

Each argument is described in detail in: L<Paws::B2bi::TestParsing>

Returns: a L<Paws::B2bi::TestParsingResponse> instance

Parses the input EDI (electronic data interchange) file. The input file
has a file size limit of 250 KB.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::B2bi::UntagResource>

Returns: nothing

Detaches a key-value pair from the specified resource, as identified by
its Amazon Resource Name (ARN). Resources are capability, partnership,
profile, transformers and other entities.


=head2 UpdateCapability

=over

=item CapabilityId => Str

=item [Configuration => L<Paws::B2bi::CapabilityConfiguration>]

=item [InstructionsDocuments => ArrayRef[L<Paws::B2bi::S3Location>]]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::B2bi::UpdateCapability>

Returns: a L<Paws::B2bi::UpdateCapabilityResponse> instance

Updates some of the parameters for a capability, based on the specified
parameters. A trading capability contains the information required to
transform incoming EDI documents into JSON or XML outputs.


=head2 UpdatePartnership

=over

=item PartnershipId => Str

=item [Capabilities => ArrayRef[Str|Undef]]

=item [CapabilityOptions => L<Paws::B2bi::CapabilityOptions>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::B2bi::UpdatePartnership>

Returns: a L<Paws::B2bi::UpdatePartnershipResponse> instance

Updates some of the parameters for a partnership between a customer and
trading partner. A partnership represents the connection between you
and your trading partner. It ties together a profile and one or more
trading capabilities.


=head2 UpdateProfile

=over

=item ProfileId => Str

=item [BusinessName => Str]

=item [Email => Str]

=item [Name => Str]

=item [Phone => Str]


=back

Each argument is described in detail in: L<Paws::B2bi::UpdateProfile>

Returns: a L<Paws::B2bi::UpdateProfileResponse> instance

Updates the specified parameters for a profile. A profile is the
mechanism used to create the concept of a private network.


=head2 UpdateTransformer

=over

=item TransformerId => Str

=item [EdiType => L<Paws::B2bi::EdiType>]

=item [FileFormat => Str]

=item [InputConversion => L<Paws::B2bi::InputConversion>]

=item [Mapping => L<Paws::B2bi::Mapping>]

=item [MappingTemplate => Str]

=item [Name => Str]

=item [OutputConversion => L<Paws::B2bi::OutputConversion>]

=item [SampleDocument => Str]

=item [SampleDocuments => L<Paws::B2bi::SampleDocuments>]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::B2bi::UpdateTransformer>

Returns: a L<Paws::B2bi::UpdateTransformerResponse> instance

Updates the specified parameters for a transformer. A transformer can
take an EDI file as input and transform it into a JSON-or XML-formatted
document. Alternatively, a transformer can take a JSON-or XML-formatted
document as input and transform it into an EDI file.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCapabilities(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCapabilities([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - capabilities, passing the object as the first parameter, and the string 'capabilities' as the second parameter 

If not, it will return a a L<Paws::B2bi::ListCapabilitiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPartnerships(sub { },[MaxResults => Int, NextToken => Str, ProfileId => Str])

=head2 ListAllPartnerships([MaxResults => Int, NextToken => Str, ProfileId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - partnerships, passing the object as the first parameter, and the string 'partnerships' as the second parameter 

If not, it will return a a L<Paws::B2bi::ListPartnershipsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProfiles(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllProfiles([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - profiles, passing the object as the first parameter, and the string 'profiles' as the second parameter 

If not, it will return a a L<Paws::B2bi::ListProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTransformers(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllTransformers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - transformers, passing the object as the first parameter, and the string 'transformers' as the second parameter 

If not, it will return a a L<Paws::B2bi::ListTransformersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

